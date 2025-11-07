using UnityEngine;

public class moveBg : MonoBehaviour
{

    public float speed = 5f;         // Speed of movement
    public GameObject originObj;

    Vector3 direction = Vector3.forward;

    private float movedAmount = 0f;

    public GameObject treeSection1;
    public GameObject treeSection2;
    public GameObject treeSection3;
    public GameObject road;


    // Update is called once per frame
    void Update()
    {
        float moveThisFrame = speed * Time.deltaTime;

        movedAmount += moveThisFrame;

        road.transform.position += direction * moveThisFrame;

        foreach (Transform child in this.transform)
        {
            
            child.position += direction * moveThisFrame;

            if(treeSection1.transform.position.z >= 100)
            {
                Debug.Log("1 should tp back");
                treeSection1.transform.position = new Vector3(0,10,-550);
                
            }
            else if(treeSection2.transform.position.z >= 250)
            {
                Debug.Log("2 should tp back");
                treeSection2.transform.position = new Vector3(0,10,-400);
                road.transform.position = new Vector3(-165,1,-163);
            }
            else if(treeSection3.transform.position.z >= 515)
            {
                Debug.Log("3 should tp back");
                treeSection3.transform.position = new Vector3(0,10,-200);
            }
        }
    }
}
