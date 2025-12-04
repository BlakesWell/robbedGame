using UnityEngine;

public class CutsceneManager : MonoBehaviour
{
    public GameObject player;
    public GameObject enemy;
    public GameObject animEnemy;
    public GameObject cam;

    System.Collections.IEnumerator playAnim()
    {
        //yield return new WaitForSeconds(1f);
        enemy.GetComponent<enemyMovement>().enabled = false;
        //player.GetComponent<Animator>().enabled = true;

        yield return new WaitForSeconds(1.5f);
        enemy.GetComponent<AudioSource>().enabled = true;
        yield return new WaitForSeconds(1.5f);

        enemy.GetComponent<Animator>().enabled = true;
        animEnemy.GetComponent<Animator>().SetInteger("Mode", 2);
  
        Debug.Log("should start enemy animation");

        yield return new WaitForSeconds(4f);

        enemy.GetComponent<enemyMovement>().enabled = true;
        enemy.GetComponent<Animator>().enabled = false;
        
        animEnemy.GetComponent<Animator>().SetInteger("Mode", 0);
        
        player.GetComponent<Animator>().enabled = false;
        Debug.Log("should stop player animation");

        this.GetComponent<Camera>().enabled = false;
        cam.GetComponent<Camera>().enabled = true;
    }
    void Start()
    {
        StartCoroutine(playAnim());
    }
        
    
}
