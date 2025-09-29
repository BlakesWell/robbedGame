using UnityEngine;
using UnityEngine.SceneManagement;

public class nextLevel : MonoBehaviour
{
    void OnTriggerEnter(Collider maybePlayer)
    {
        if(maybePlayer.gameObject.CompareTag("player")) //if object is glass
        {
            print("should progress level");
            Destroy(gameObject);
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
    }
}
