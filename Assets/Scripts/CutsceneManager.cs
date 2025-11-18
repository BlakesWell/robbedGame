using UnityEngine;

public class CutsceneManager : MonoBehaviour
{
    public GameObject player;
    public GameObject enemy;
    public GameObject cam;

    async void playAnim()
    {
        enemy.GetComponent<enemyMovement>().enabled = false;
        player.GetComponent<PlayerController>().enabled = false;
        player.GetComponent<Animator>().SetInteger("Mode", 2);
        

        await System.Threading.Tasks.Task.Delay(3000);


        enemy.GetComponent<Animator>().enabled = true;
        player.GetComponent<Animator>().SetInteger("Mode", 0);
        enemy.GetComponent<Animator>().SetInteger("Mode", 2);


        await System.Threading.Tasks.Task.Delay(4000);


        player.GetComponent<PlayerController>().enabled = true;
        enemy.GetComponent<enemyMovement>().enabled = true;
        player.GetComponent<Animator>().SetInteger("Mode", 0);
        enemy.GetComponent<Animator>().SetInteger("Mode", 0);

        this.GetComponent<Camera>().enabled = false;
        cam.GetComponent<Camera>().enabled = true;
    }

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        playAnim();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
