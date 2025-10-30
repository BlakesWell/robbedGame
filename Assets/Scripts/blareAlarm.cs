using UnityEngine;

public class blareAlarm : MonoBehaviour
{
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    async void Start()
    {
        while(true)
        {
            if(this.GetComponent<Light>().enabled == false)
            {
                await System.Threading.Tasks.Task.Delay(1000);
                this.GetComponent<Light>().enabled = true;
            }
            else
            {
                await System.Threading.Tasks.Task.Delay(1000);
                this.GetComponent<Light>().enabled = false;
            }
        }
    }
}
