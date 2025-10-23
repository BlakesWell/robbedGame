using UnityEngine;

public class findPlayer : MonoBehaviour
{
    [SerializeField] enemyMovement daScript;
    void OnTriggerEnter(Collider maybePlayer)
    {
        if(maybePlayer.gameObject.CompareTag("player")) //if player touches this block
        {
            daScript.seen = true;
        }
    }
}
