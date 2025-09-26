using UnityEngine;
using UnityEngine.SceneManagement;

public class breakGlass : MonoBehaviour
{
    void OnTriggerEnter(Collider maybeGlass)
    {
        if(maybeGlass.gameObject.CompareTag("glass")) //if object is glass
        {
            print("should break glass");
            Destroy(maybeGlass.gameObject);
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
    }
}
