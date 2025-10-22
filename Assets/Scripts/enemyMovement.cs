using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.SceneManagement;

public class enemyMovement : MonoBehaviour
{
    public Transform player;
    public bool seen = false;
    private NavMeshAgent nma;
    public float distance;

    [SerializeField] float waitTimeOnWayPoint = 1f;
    [SerializeField] Path path;

    float time = 0f;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        nma = GetComponent<NavMeshAgent>();
        nma.destination = path.GetCurrentWayPoint();
    }

    // Update is called once per frame
    void Update()
    {
        distance = Vector3.Distance(this.transform.position, player.position);

        if(distance < 30 && !seen)
        {
            seen = true;
            nma.destination = player.position;
        }
        else if(!seen)
        {
            if(nma.remainingDistance <= 0.1f)
            {
                time += Time.deltaTime;
                if(time >= waitTimeOnWayPoint)
                {
                    time = 0f;
                    nma.destination = path.GetNextWaypoint();
                }
            }
        }
        else
        {
            nma.destination = player.position;
        }
    }

    void OnTriggerEnter(Collider maybePlayer)
    {
        if(maybePlayer.gameObject.CompareTag("player")) //if player touches this block
        {
            print("should kill player");
            SceneManager.LoadScene(0);
        }
    }

}
