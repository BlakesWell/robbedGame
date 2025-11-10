using UnityEngine;

public class blareAlarm : MonoBehaviour
{
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        StartCoroutine(AlarmCoroutine());
    }

    private System.Collections.IEnumerator AlarmCoroutine()
    {
        var light = this.GetComponent<Light>();
        while (true)
        {
            light.enabled = !light.enabled;
            yield return new WaitForSeconds(1f);
        }
    }
}
