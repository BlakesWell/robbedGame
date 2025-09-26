using UnityEngine;

public class pickUpHammer : MonoBehaviour
{

    public GameObject playerObj;

    void OnTriggerEnter(Collider maybeHammer)
    {
        if(maybeHammer.gameObject.CompareTag("hammer")) //if object is hammer
        {
            print("should pickup");
            GameObject hammer = Instantiate(maybeHammer.gameObject);
            hammer.tag = "hammerPickedUp";
            Destroy(maybeHammer.gameObject);

            hammer.transform.parent = playerObj.transform;
        }
    }
}
