using UnityEngine;
using UnityEngine.Rendering;

public class EnvironmentSettingsManager : MonoBehaviour
{
    [Header("Skybox")]
    public Material skyboxMaterial;

    [Header("Ambient Lighting")]
    public AmbientMode ambientMode = AmbientMode.Skybox;
    public Color ambientSkyColor = Color.white;
    public Color ambientEquatorColor = Color.gray;
    public Color ambientGroundColor = Color.black;
    public Color ambientLightColor = Color.white;
    public float ambientIntensity = 1.0f;

    [Header("Reflections")]
    public DefaultReflectionMode reflectionMode = DefaultReflectionMode.Skybox;
    public Cubemap customReflection;
    public float reflectionIntensity = 1.0f;
    public int reflectionBounces = 1;

    [Header("Fog")]
    public bool fog = false;
    public Color fogColor = Color.gray;
    public FogMode fogMode = FogMode.Linear;
    public float fogDensity = 0.01f;
    public float fogStartDistance = 0f;
    public float fogEndDistance = 300f;

    void Start()
    {
        // Skybox
        RenderSettings.skybox = skyboxMaterial;

        // Ambient
        RenderSettings.ambientMode = ambientMode;
        RenderSettings.ambientSkyColor = ambientSkyColor;
        RenderSettings.ambientEquatorColor = ambientEquatorColor;
        RenderSettings.ambientGroundColor = ambientGroundColor;
        RenderSettings.ambientLight = ambientLightColor;
        RenderSettings.ambientIntensity = ambientIntensity;

        // Reflections
        RenderSettings.defaultReflectionMode = reflectionMode;
        RenderSettings.customReflection = customReflection;
        RenderSettings.reflectionIntensity = reflectionIntensity;
        RenderSettings.reflectionBounces = reflectionBounces;

        // Fog
        RenderSettings.fog = fog;
        RenderSettings.fogColor = fogColor;
        RenderSettings.fogMode = fogMode;
        RenderSettings.fogDensity = fogDensity;
        RenderSettings.fogStartDistance = fogStartDistance;
        RenderSettings.fogEndDistance = fogEndDistance;
    }
}
