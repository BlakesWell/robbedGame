using UnityEngine;
using UnityEngine.AI;

public class enemyMovement : MonoBehaviour
{
    public Transform player;
    public GameObject path;
    private bool seen = false;
    private NavMeshAgent nma;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        nma = GetComponent<NavMeshAgent>();
    }

    // Update is called once per frame
    void Update()
    {
        if(player != null && !seen)
        {
            nma.SetDestination(player.position);
        }
    }
}
