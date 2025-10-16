using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
  public float moveSpeed = 5f;
  public float gravity = -9.81f;
  public float jumpHeight = 2f;

  public float turnSpeed = 100f;
  
  public float controllerHeight = 2f; // Set this to your player's height
  public Vector3 controllerCenter = new Vector3(0, 1f, 0); // Y should be half of height

  private CharacterController characterController;
  private Vector3 velocity;
  private bool isGrounded;

  void Start()
  {
    characterController = GetComponent<CharacterController>();
    //characterController.height = controllerHeight;
    //characterController.center = controllerCenter;
  }

  void Update()
  {
    // Rotate the player around its Y axis when pressing A/D (Horizontal axis)
    float horizontalInput = Input.GetAxis("Horizontal");
    transform.Rotate(Vector3.up, -horizontalInput * turnSpeed * Time.deltaTime);

    isGrounded = characterController.isGrounded;

    if (isGrounded && velocity.y < 0)
    {
      velocity.y = -2f;
    }

    float z = Input.GetAxis("Vertical");

    // Reverse the direction so W moves forward and S moves backward
    z = -z;

    // Running logic
    float currentSpeed = moveSpeed;
    if (Input.GetKey(KeyCode.LeftShift))
    {
      currentSpeed *= 2f; // Double the speed when running
    }

    Vector3 move = transform.forward * z;
    characterController.Move(move * currentSpeed * Time.deltaTime);

    if (Input.GetButtonDown("Jump") && isGrounded)
    {
      velocity.y = Mathf.Sqrt(jumpHeight * -2f * gravity);
    }

    velocity.y += gravity * Time.deltaTime;
    characterController.Move(velocity * Time.deltaTime);
  }
  /*void FixedUpdate() 
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
    }*/
}