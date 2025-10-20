using UnityEngine;
using UnityEngine.SceneManagement;

public class killPlayer : MonoBehaviour
{
    void OnTriggerEnter(Collider maybePlayer)
    {
        if(maybePlayer.gameObject.CompareTag("player")) //if object is player
        {
            print("should kill");
            SceneManager.LoadScene(0);
        }
    }
}
