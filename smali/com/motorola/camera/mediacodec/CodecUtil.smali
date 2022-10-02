.class public final Lcom/motorola/camera/mediacodec/CodecUtil;
.super Ljava/lang/Object;
.source "CodecUtil.kt"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/mediacodec/CodecUtil;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProfileLevel(Ljava/lang/String;Landroid/media/MediaCodecInfo;)I
    .locals 3

    const-string v0, "codecInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 2
    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const-string p1, "cap.profileLevels"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget v2, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-le v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 12

    .line 1
    invoke-static {}, Lcom/motorola/camera/Util;->getHardWare()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 3
    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ltz v3, :cond_4

    move v6, v5

    :goto_0
    add-int/lit8 v7, v6, 0x1

    .line 5
    aget-object v6, v1, v6

    .line 6
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 7
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mediaCodecInfo.name"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "ENGLISH"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "hardWare"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v0, v5, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v8

    .line 9
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_3

    move v10, v5

    :goto_1
    add-int/lit8 v11, v10, 0x1

    .line 10
    aget-object v10, v8, v10

    invoke-static {v10, p0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    return-object v6

    :cond_1
    if-le v11, v9, :cond_2

    goto :goto_2

    :cond_2
    move v10, v11

    goto :goto_1

    :cond_3
    :goto_2
    if-gt v7, v3, :cond_4

    move v6, v7

    goto :goto_0

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object p0, v3, v2

    const-string p0, "Can\'t find codec to support hardWare:%s mineType:%s"

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline1;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get codec infos"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
