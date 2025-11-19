using UnityEngine;

public class AnimManager : MonoBehaviour
{
    // Update is called once per frame
    void Update()
    {
        if(Input.GetKey(KeyCode.W))
        {
            if(Input.GetKey(KeyCode.LeftShift))
            {
                GetComponent<Animator>().SetInteger("Mode", 2);
            }
            else
            {
                GetComponent<Animator>().SetInteger("Mode", 1);
            }
        }
        else if(Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.D))
        {
            GetComponent<Animator>().SetInteger("Mode", 1);
        }
        else
        {
            GetComponent<Animator>().SetInteger("Mode", 0);
        }
    }
}
