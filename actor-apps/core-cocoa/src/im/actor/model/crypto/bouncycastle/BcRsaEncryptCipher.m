//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/im/actor/model/crypto/bouncycastle/BcRsaEncryptCipher.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/bouncycastle/BcRsaEncryptCipher.h"
#include "im/actor/model/crypto/bouncycastle/RandomProvider.h"
#include "im/actor/model/crypto/encoding/X509RsaPublicKey.h"
#include "java/lang/Exception.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/crypto/AsymmetricBlockCipher.h"
#include "org/bouncycastle/crypto/digests/SHA1Digest.h"
#include "org/bouncycastle/crypto/encodings/OAEPEncoding.h"
#include "org/bouncycastle/crypto/engines/RSAEngine.h"
#include "org/bouncycastle/crypto/params/ParametersWithRandom.h"
#include "org/bouncycastle/crypto/params/RSAKeyParameters.h"

@interface BCBcRsaEncryptCipher () {
 @public
  id<OrgBouncycastleCryptoAsymmetricBlockCipher> cipher_;
  id<BCRandomProvider> random_;
}

@end

J2OBJC_FIELD_SETTER(BCBcRsaEncryptCipher, cipher_, id<OrgBouncycastleCryptoAsymmetricBlockCipher>)
J2OBJC_FIELD_SETTER(BCBcRsaEncryptCipher, random_, id<BCRandomProvider>)

@implementation BCBcRsaEncryptCipher

- (instancetype)initWithBCRandomProvider:(id<BCRandomProvider>)random
                           withByteArray:(IOSByteArray *)publicKey {
  BCBcRsaEncryptCipher_initWithBCRandomProvider_withByteArray_(self, random, publicKey);
  return self;
}

- (IOSByteArray *)encryptWithByteArray:(IOSByteArray *)sourceData {
  @synchronized(self) {
    if (cipher_ == nil) {
      return nil;
    }
    @try {
      return [((id<OrgBouncycastleCryptoAsymmetricBlockCipher>) nil_chk(cipher_)) processBlockWithByteArray:sourceData withInt:0 withInt:((IOSByteArray *) nil_chk(sourceData))->size_];
    }
    @catch (JavaLangException *e) {
      [((JavaLangException *) nil_chk(e)) printStackTrace];
      return nil;
    }
  }
}

@end

void BCBcRsaEncryptCipher_initWithBCRandomProvider_withByteArray_(BCBcRsaEncryptCipher *self, id<BCRandomProvider> random, IOSByteArray *publicKey) {
  (void) NSObject_init(self);
  self->random_ = random;
  @try {
    BCX509RsaPublicKey *key = new_BCX509RsaPublicKey_initWithByteArray_(publicKey);
    OrgBouncycastleCryptoParamsRSAKeyParameters *param = new_OrgBouncycastleCryptoParamsRSAKeyParameters_initWithBoolean_withJavaMathBigInteger_withJavaMathBigInteger_(NO, [key getModulus], [key getExponent]);
    self->cipher_ = new_OrgBouncycastleCryptoEncodingsOAEPEncoding_initWithOrgBouncycastleCryptoAsymmetricBlockCipher_withOrgBouncycastleCryptoDigest_(new_OrgBouncycastleCryptoEnginesRSAEngine_init(), new_OrgBouncycastleCryptoDigestsSHA1Digest_init());
    [self->cipher_ init__WithBoolean:YES withOrgBouncycastleCryptoParamsParametersWithRandom:new_OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_withBCRandomProvider_(param, random)];
  }
  @catch (JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
}

BCBcRsaEncryptCipher *new_BCBcRsaEncryptCipher_initWithBCRandomProvider_withByteArray_(id<BCRandomProvider> random, IOSByteArray *publicKey) {
  BCBcRsaEncryptCipher *self = [BCBcRsaEncryptCipher alloc];
  BCBcRsaEncryptCipher_initWithBCRandomProvider_withByteArray_(self, random, publicKey);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BCBcRsaEncryptCipher)