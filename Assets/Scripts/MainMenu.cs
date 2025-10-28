using UnityEngine;
using UnityEngine.SceneManagement;
using System.Threading;

public class MainMenu : MonoBehaviour
{
    public GameObject animated;
    public GameObject animatedUI1;
    public GameObject animatedUI2;
    
    async void delayAnim()
    {
        animated.GetComponent<Animator>().enabled = true;
        animatedUI1.GetComponent<Animator>().enabled = true;
        animatedUI2.GetComponent<Animator>().enabled = true;

        await System.Threading.Tasks.Task.Delay(2900);

        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }
    public void PlayGame()
    {
        delayAnim();
    }
}
