using UnityEngine;
using System.Threading;

public class explodeVault : MonoBehaviour
{
    public GameObject cam1;
    public GameObject cam2;

    public GameObject particle;

    async void OnTriggerEnter(Collider maybeVault)
    {
        if(maybeVault.gameObject.CompareTag("vault")) //if object is glass
        {
            print("should explode vault");
            Destroy(maybeVault.gameObject);
            Destroy(gameObject);

            particle.SetActive(true);

            await System.Threading.Tasks.Task.Delay(1000);

            changeCameras();
        }

        void changeCameras()
        {
            cam1.GetComponent<Camera>().enabled = false;
            cam2.GetComponent<Camera>().enabled = true;
        }
    }

    
}
