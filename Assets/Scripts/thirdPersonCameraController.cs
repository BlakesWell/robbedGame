    using UnityEngine;
    using Cinemachine;

    public class ThirdPersonCinemachineController : MonoBehaviour
    {
        public Transform followTarget; // The object the camera should follow (e.g., your player)
        public CinemachineVirtualCamera cinemachineCamera; // Reference to your Cinemachine Camera
        public float rotationSpeed = 5f;
        public float verticalLookSpeed = 3f;
        public float maxVerticalAngle = 80f;
        public float minVerticalAngle = -60f;

        private float currentYaw = 0f;
        private float currentPitch = 0f;

        void Start()
        {
            if (followTarget == null)
            {
                Debug.LogError("Follow Target not assigned for ThirdPersonCinemachineController.");
                enabled = false;
                return;
            }
            if (cinemachineCamera == null)
            {
                Debug.LogError("Cinemachine Camera not assigned for ThirdPersonCinemachineController.");
                enabled = false;
                return;
            }

            // Initialize rotation based on the follow target's forward direction
            currentYaw = followTarget.eulerAngles.y;
            currentPitch = cinemachineCamera.transform.localEulerAngles.x;
        }

        void LateUpdate()
        {
            // Handle horizontal rotation (yaw)
            float mouseX = Input.GetAxis("Mouse X") * rotationSpeed;
            currentYaw += mouseX;

            // Handle vertical rotation (pitch)
            float mouseY = Input.GetAxis("Mouse Y") * verticalLookSpeed;
            currentPitch -= mouseY;
            currentPitch = Mathf.Clamp(currentPitch, minVerticalAngle, maxVerticalAngle);

            // Apply rotation to the follow target (or a dedicated camera pivot)
            followTarget.rotation = Quaternion.Euler(0, currentYaw, 0);

            // Position the Cinemachine Camera relative to the follow target
            // You'll need to manually set the desired offset here
            Vector3 cameraOffset = new Vector3(0, 1.5f, -3f); // Example offset
            cinemachineCamera.transform.position = followTarget.position + followTarget.rotation * cameraOffset;

            // Apply vertical rotation to the Cinemachine Camera
            cinemachineCamera.transform.localRotation = Quaternion.Euler(currentPitch, 0, 0);
        }
    }