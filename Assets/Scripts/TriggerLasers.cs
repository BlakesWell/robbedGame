using UnityEngine;

public class TriggerLasers : MonoBehaviour
{
    public Material laserMaterial;
    public GameObject lasersParent;

    void OnTriggerEnter(Collider laserEvent)
    {
        if(laserEvent.gameObject.CompareTag("laser")) //if object is laser
        {
            foreach (Transform child in lasersParent.transform)// for each laser
            {
                child.gameObject.SetActive(false);
                Renderer renderer = child.GetComponent<Renderer>();
                if (renderer != null)//if has renderer
                {
                    Material mat = renderer.material; // Unique instance for each laser
                    Color color = mat.color;
                    color.a = 0; // Set to desired transparency
                    mat.color = color;
                }
            }
        }
    }
}
