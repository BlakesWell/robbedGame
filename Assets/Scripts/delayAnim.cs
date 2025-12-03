using UnityEngine;
using System.Threading;
using UnityEngine.SceneManagement;

public class delayAnim : MonoBehaviour
{
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    async void delayDaAnim()
    {
        await System.Threading.Tasks.Task.Delay(1000);
        this.GetComponent<Animator>().enabled = true;
        await System.Threading.Tasks.Task.Delay(2000);
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }
    void Start()
    {
        delayDaAnim();
    }
}
