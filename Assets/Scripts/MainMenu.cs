using UnityEngine;
using UnityEngine.SceneManagement;
using System.Threading;

public class MainMenu : MonoBehaviour
{
    public GameObject animated;
    async void delayAnim()
    {
        await System.Threading.Tasks.Task.Delay(5000);
    }
    public void PlayGame()
    {
        animated.GetComponent<Animator>().enabled = true;

        delayAnim();
        
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);

    }
}
