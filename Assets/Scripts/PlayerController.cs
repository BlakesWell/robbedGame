using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerController : MonoBehaviour
{
 // Speed at which the player moves.
 private float speed = 2f;
 public float normSpeed = 2f;
 public float runSpeed = 3f;
 public float turnSpeed = 45f;

  public GameObject body;
 private bool crouched = false;

 

 // Start is called before the first frame update.
 void Start()
    {

    }
 
 // This function is called when a move input is detected.
 void OnMove(InputValue movementValue)
   {

   }

 // FixedUpdate is called once per fixed frame-rate frame.
void FixedUpdate() 
    {
      var velocity = Vector3.forward * Input.GetAxis("Vertical") * speed;
      transform.Translate(velocity * Time.deltaTime);
      transform.Rotate(Vector3.down, Input.GetAxis("Horizontal") * Time.deltaTime * turnSpeed);

      if (Input.GetKey(KeyCode.W) && Input.GetKey(KeyCode.LeftShift)) 
      {
			  speed = runSpeed;
      } 
      else 
      {
        speed = normSpeed;
      }

      if(Input.GetKey(KeyCode.LeftControl))
      {
        bool wait = false;
        if(!wait)
        {
          if(!crouched)
          {
            crouched = true;
            body.transform.localScale -= new Vector3(0, 1f, 0);
          }
          else
          {
            crouched = false;
            body.transform.localScale += new Vector3(0, 1f, 0);
          }
        }
      }
    }
}