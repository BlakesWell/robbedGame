using UnityEngine;

public class explodeVault : MonoBehaviour
{
    void OnTriggerEnter(Collider maybeVault)
    {
        if(maybeVault.gameObject.CompareTag("vault")) //if object is glass
        {
            print("should explode vault");
            Destroy(maybeVault.gameObject);
            Destroy(gameObject);
        }
    }
}
