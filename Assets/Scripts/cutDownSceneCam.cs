using UnityEngine;

public class cutDownSceneCam : MonoBehaviour
{
    public GameObject thirdPersonCam;
    async void delayAnim()
    {
        this.GetComponent<Animator>().enabled = true;

        await System.Threading.Tasks.Task.Delay(2999);

        thirdPersonCam.GetComponent<Camera>().enabled = true;
        this.GetComponent<Camera>().enabled = false;
        
    }
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        delayAnim();
    }

    
}
