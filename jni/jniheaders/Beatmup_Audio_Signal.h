/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class Beatmup_Audio_Signal */

#ifndef _Included_Beatmup_Audio_Signal
#define _Included_Beatmup_Audio_Signal
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     Beatmup_Audio_Signal
 * Method:    newAudioSignal
 * Signature: (LBeatmup/Context;IIIF)J
 */
JNIEXPORT jlong JNICALL Java_Beatmup_Audio_Signal_newAudioSignal
  (JNIEnv *, jclass, jobject, jint, jint, jint, jfloat);

/*
 * Class:     Beatmup_Audio_Signal
 * Method:    newAudioSignalFromWAV
 * Signature: (LBeatmup/Context;Ljava/lang/String;)J
 */
JNIEXPORT jlong JNICALL Java_Beatmup_Audio_Signal_newAudioSignalFromWAV
  (JNIEnv *, jclass, jobject, jstring);

/*
 * Class:     Beatmup_Audio_Signal
 * Method:    newAudioSignalSource
 * Signature: (LBeatmup/Context;J)J
 */
JNIEXPORT jlong JNICALL Java_Beatmup_Audio_Signal_newAudioSignalSource
  (JNIEnv *, jclass, jobject, jlong);

/*
 * Class:     Beatmup_Audio_Signal
 * Method:    getLength
 * Signature: (J)I
 */
JNIEXPORT jint JNICALL Java_Beatmup_Audio_Signal_getLength
  (JNIEnv *, jclass, jlong);

/*
 * Class:     Beatmup_Audio_Signal
 * Method:    getSampleFormat
 * Signature: (J)I
 */
JNIEXPORT jint JNICALL Java_Beatmup_Audio_Signal_getSampleFormat
  (JNIEnv *, jclass, jlong);

/*
 * Class:     Beatmup_Audio_Signal
 * Method:    getChannelCount
 * Signature: (J)I
 */
JNIEXPORT jint JNICALL Java_Beatmup_Audio_Signal_getChannelCount
  (JNIEnv *, jclass, jlong);

#ifdef __cplusplus
}
#endif
#endif
