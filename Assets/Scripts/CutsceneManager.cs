using UnityEngine;

public class CutsceneManager : MonoBehaviour
{
    public GameObject player;
    public GameObject animPlayer;
    public GameObject enemy;
    public GameObject animEnemy;
    public GameObject cam;

    System.Collections.IEnumerator playAnim()
    {
        //yield return new WaitForSeconds(1f);
        enemy.GetComponent<enemyMovement>().enabled = false;
        player.GetComponent<PlayerController>().enabled = false;
        //player.GetComponent<Animator>().enabled = true;
        animPlayer.GetComponent<Animator>().SetInteger("Mode", 2);
        animEnemy.GetComponent<Animator>().SetInteger("Mode", 2);

        yield return new WaitForSeconds(3f);

        enemy.GetComponent<Animator>().enabled = true;
        animPlayer.GetComponent<Animator>().SetInteger("Mode", 0);
        animEnemy.GetComponent<Animator>().SetInteger("Mode", 2);

        yield return new WaitForSeconds(4f);

        player.GetComponent<PlayerController>().enabled = true;
        player.GetComponent<Animator>().enabled = false;
        enemy.GetComponent<enemyMovement>().enabled = true;
        enemy.GetComponent<Animator>().enabled = false;
        animPlayer.GetComponent<Animator>().SetInteger("Mode", 0);
        animEnemy.GetComponent<Animator>().SetInteger("Mode", 0);

        this.GetComponent<Camera>().enabled = false;
        cam.GetComponent<Camera>().enabled = true;
    }
    void Start()
    {
        StartCoroutine(playAnim());
    }
        
    
}
