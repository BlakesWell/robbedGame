using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class flipPage : MonoBehaviour
{

    public GameObject frontPage;
    public GameObject paperSound;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    public void flipThePage()
    {
        if(frontPage.GetComponent<RawImage>().enabled)
        {
            frontPage.GetComponent<RawImage>().enabled = false;
            paperSound.GetComponent<AudioSource>().enabled = true;
        }
        else
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
    }
}
