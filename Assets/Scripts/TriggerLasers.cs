using UnityEngine;

public class TriggerLasers : MonoBehaviour
{
    public GameObject lasersParent;

    [SerializeField] enemyMovement daScript;

    public GameObject light;

    void OnTriggerEnter(Collider laserEvent)
    {
        if(laserEvent.gameObject.CompareTag("laser")) //if object is laser
        {
            foreach (Transform child in lasersParent.transform) // for each laser
            {
                Destroy(child.gameObject);
            }

            light.GetComponent<Light>().enabled = true;
            light.GetComponent<AudioSource>().enabled = true;

            daScript.seen = true;
        }
    }
}
