/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class Beatmup_Imaging_ColorMatrix */

#ifndef _Included_Beatmup_Imaging_ColorMatrix
#define _Included_Beatmup_Imaging_ColorMatrix
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     Beatmup_Imaging_ColorMatrix
 * Method:    newColorMatrix
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_Beatmup_Imaging_ColorMatrix_newColorMatrix
  (JNIEnv *, jclass);

/*
 * Class:     Beatmup_Imaging_ColorMatrix
 * Method:    assign
 * Signature: (JJ)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_ColorMatrix_assign
  (JNIEnv *, jclass, jlong, jlong);

/*
 * Class:     Beatmup_Imaging_ColorMatrix
 * Method:    multiply
 * Signature: (JJJ)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_ColorMatrix_multiply
  (JNIEnv *, jclass, jlong, jlong, jlong);

/*
 * Class:     Beatmup_Imaging_ColorMatrix
 * Method:    setHSVCorrection
 * Signature: (JFFF)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_ColorMatrix_setHSVCorrection
  (JNIEnv *, jobject, jlong, jfloat, jfloat, jfloat);

/*
 * Class:     Beatmup_Imaging_ColorMatrix
 * Method:    setColorInversion
 * Signature: (JFFFFF)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_ColorMatrix_setColorInversion
  (JNIEnv *, jobject, jlong, jfloat, jfloat, jfloat, jfloat, jfloat);

/*
 * Class:     Beatmup_Imaging_ColorMatrix
 * Method:    getElement
 * Signature: (JII)F
 */
JNIEXPORT jfloat JNICALL Java_Beatmup_Imaging_ColorMatrix_getElement
  (JNIEnv *, jobject, jlong, jint, jint);

/*
 * Class:     Beatmup_Imaging_ColorMatrix
 * Method:    setElement
 * Signature: (JIIF)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_ColorMatrix_setElement
  (JNIEnv *, jobject, jlong, jint, jint, jfloat);

#ifdef __cplusplus
}
#endif
#endif
