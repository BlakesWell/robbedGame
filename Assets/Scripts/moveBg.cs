using UnityEngine;

public class moveBg : MonoBehaviour
{

    public GameObject trees;
    public float speed = 5f;         // Speed of movement
    public float moveDistance = 10f; // How far to move before teleporting
    public GameObject originObj;

    private Vector3 startPos;
    Vector3 direction = Vector3.forward;

    private float movedAmount = 0f;

    public GameObject treeSection1;
    public GameObject treeSection2;
    public GameObject treeSection3;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        startPos = originObj.transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        float moveThisFrame = speed * Time.deltaTime;

        movedAmount += moveThisFrame;

        foreach (Transform child in trees.transform)
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
            }
            else if(treeSection3.transform.position.z >= 515)
            {
                Debug.Log("3 should tp back");
                treeSection3.transform.position = new Vector3(0,10,-200);
            }
        }
    }
}
