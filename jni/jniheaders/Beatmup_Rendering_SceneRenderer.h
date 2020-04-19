/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class Beatmup_Rendering_SceneRenderer */

#ifndef _Included_Beatmup_Rendering_SceneRenderer
#define _Included_Beatmup_Rendering_SceneRenderer
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    newSceneRenderer
 * Signature: (LBeatmup/Context;)J
 */
JNIEXPORT jlong JNICALL Java_Beatmup_Rendering_SceneRenderer_newSceneRenderer
  (JNIEnv *, jclass, jobject);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    setOutput
 * Signature: (JLBeatmup/Bitmap;)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Rendering_SceneRenderer_setOutput
  (JNIEnv *, jobject, jlong, jobject);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    resetOutput
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Rendering_SceneRenderer_resetOutput
  (JNIEnv *, jobject, jlong);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    setScene
 * Signature: (JLBeatmup/Rendering/Scene;)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Rendering_SceneRenderer_setScene
  (JNIEnv *, jobject, jlong, jobject);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    setOutputMapping
 * Signature: (JI)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Rendering_SceneRenderer_setOutputMapping
  (JNIEnv *, jobject, jlong, jint);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    getOutputMapping
 * Signature: (J)I
 */
JNIEXPORT jint JNICALL Java_Beatmup_Rendering_SceneRenderer_getOutputMapping
  (JNIEnv *, jobject, jlong);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    setOutputReferenceWidth
 * Signature: (JI)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Rendering_SceneRenderer_setOutputReferenceWidth
  (JNIEnv *, jobject, jlong, jint);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    getOutputReferenceWidth
 * Signature: (J)I
 */
JNIEXPORT jint JNICALL Java_Beatmup_Rendering_SceneRenderer_getOutputReferenceWidth
  (JNIEnv *, jobject, jlong);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    setOutputPixelsFetching
 * Signature: (JZ)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Rendering_SceneRenderer_setOutputPixelsFetching
  (JNIEnv *, jobject, jlong, jboolean);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    getOutputPixelsFetching
 * Signature: (J)Z
 */
JNIEXPORT jboolean JNICALL Java_Beatmup_Rendering_SceneRenderer_getOutputPixelsFetching
  (JNIEnv *, jobject, jlong);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    setBackgroundBitmap
 * Signature: (JLBeatmup/Bitmap;)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Rendering_SceneRenderer_setBackgroundBitmap
  (JNIEnv *, jobject, jlong, jobject);

/*
 * Class:     Beatmup_Rendering_SceneRenderer
 * Method:    pickLayer
 * Signature: (JFFZ)LBeatmup/Rendering/Scene/Layer;
 */
JNIEXPORT jobject JNICALL Java_Beatmup_Rendering_SceneRenderer_pickLayer
  (JNIEnv *, jobject, jlong, jfloat, jfloat, jboolean);

#ifdef __cplusplus
}
#endif
#endif