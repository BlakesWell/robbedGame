using UnityEngine;
using UnityEngine.SceneManagement;

public class restartGame : MonoBehaviour
{
    void OnTriggerEnter(Collider maybePlayer)
    {
        if(maybePlayer.gameObject.CompareTag("player")) //if player touches this block
        {
            print("should restart game");
            //Destroy(gameObject);
            SceneManager.LoadScene(0);
        }
    }
}
