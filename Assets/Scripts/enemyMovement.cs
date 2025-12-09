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

    private Vector3 lastPosition;
    public float currentSpeed;

    public GameObject animatedEnemy;

    [SerializeField] float waitTimeOnWayPoint = 1f;
    [SerializeField] Path path;

    float time = 0f;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        nma = GetComponent<NavMeshAgent>();
        if(path)
        {
            nma.destination = path.GetCurrentWayPoint();
        }

        lastPosition = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        float distanceMoved = Vector3.Distance(transform.position, lastPosition);
        currentSpeed = distanceMoved/Time.deltaTime;

        if(currentSpeed != 0)
        {
            animatedEnemy.GetComponent<Animator>().SetInteger("Mode", 1);
        }
        else
        {
            animatedEnemy.GetComponent<Animator>().SetInteger("Mode", 0);
        }

        if(seen)
        {
            nma.destination = player.position;
            animatedEnemy.GetComponent<Animator>().SetInteger("Mode", 2);
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

        lastPosition = transform.position;
    }

    void OnTriggerEnter(Collider maybePlayer)
    {
        if(maybePlayer.gameObject.CompareTag("player")) //if player touches this block
        {
            print("should kill player");
            SceneManager.LoadScene(8);
        }
    }

}
