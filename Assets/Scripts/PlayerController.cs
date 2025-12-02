using UnityEngine;
using UnityEngine.UI;

public class PlayerController : MonoBehaviour
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

  public AudioSource step1;
  public AudioSource step2;

  int stepNum = 0;
  bool stepping = false;
  
  void Start()
  {
    characterController = GetComponent<CharacterController>();
  }

    System.Collections.IEnumerator step(float speed)
    {
      if(stepNum == 0 && !stepping)
      {
        stepping = true;
        step1.time = 0.02f;
        step1.Play();
        yield return new WaitForSeconds(speed);
        step1.Stop();
        stepping = false;
        stepNum = 1;
      }
      else
      {
        if(!stepping)
        {
          stepping = true;
          step2.time = 0.02f;
          step2.Play();
          yield return new WaitForSeconds(speed);
          step2.Stop();
          stepping = false;
          stepNum = 0;
        }
      }
    }

  void Update()
  {
    if(Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.S))
    {
      if(Input.GetKey(KeyCode.LeftShift))
      {
        StartCoroutine(step(.25f));
      }
      else
      {
        StartCoroutine(step(.4f));
      }
    }
    // Rotate the player around its Y axis when pressing A/D (Horizontal axis)
    float horizontalInput = Input.GetAxis("Horizontal");
    transform.Rotate(Vector3.up, horizontalInput * turnSpeed * Time.deltaTime);

    isGrounded = characterController.isGrounded;

    if (isGrounded && velocity.y < 0)
    {
      velocity.y = -2f;
    }

    float z = Input.GetAxis("Vertical");

    // Running logic
    float currentSpeed = moveSpeed;
    if (Input.GetKey(KeyCode.LeftShift))
    {
      currentSpeed += (int)(currentSpeed * .5); // Double the speed when running
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
}