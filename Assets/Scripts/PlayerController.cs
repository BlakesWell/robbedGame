using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerController : MonoBehaviour
{
 // Speed at which the player moves.
 public float speed = 2f; 
 public float turnSpeed = 45f;

 // Start is called before the first frame update.
 void Start()
    {

    }
 
 // This function is called when a move input is detected.
 void OnMove(InputValue movementValue)
   {

   }

 // FixedUpdate is called once per fixed frame-rate frame.
 private void FixedUpdate() 
    {
      var velocity = Vector3.forward * Input.GetAxis("Vertical") * speed;
      transform.Translate(velocity * Time.deltaTime);
      transform.Rotate(Vector3.up, Input.GetAxis("Horizontal") * Time.deltaTime * turnSpeed);
    }
}