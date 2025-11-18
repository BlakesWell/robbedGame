using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
 // Reference to the player GameObject.
 public Transform player;

 // LateUpdate is called once per frame after all Update functions have been completed.
   void LateUpdate()
    {
        transform.LookAt(player.position);
    }
}