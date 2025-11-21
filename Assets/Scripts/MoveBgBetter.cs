using UnityEngine;

public class MoveBgBetter : MonoBehaviour
{
    // Update is called once per frame
    void Update()
    {
        foreach(Transform child in transform)
        {
            child.position += new Vector3(0f, 0f, 0.1f);

            if (child.position.z > 40f)
            {
                child.position = new Vector3(child.position.x, child.position.y, -1000);
            }
        }
    }
}
