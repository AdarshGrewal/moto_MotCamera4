.class public Lcom/motorola/camera/saving/FileName;
.super Ljava/lang/Object;
.source "FileName.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final EXT_AI_IMAGE_STABILIZATION:Ljava/lang/String; = "_IS"

.field public static final EXT_AI_LOW_LIGHT_SELFIE:Ljava/lang/String; = "_AI"

.field private static final EXT_ALTM:Ljava/lang/String; = "_ALT"

.field public static final EXT_DEBUG_SLOW_MOTION:Ljava/lang/String; = "_SM"

.field private static final EXT_DEPTH:Ljava/lang/String; = "_DEPTH"

.field private static final EXT_DEPTH_MAP:Ljava/lang/String; = "_MAP"

.field private static final EXT_DIS:Ljava/lang/String; = "_DIS"

.field private static final EXT_DISPLAY_FLASH:Ljava/lang/String; = "_DF"

.field public static final EXT_DOC:Ljava/lang/String; = "_DOC"

.field private static final EXT_DUP:Ljava/lang/String; = "_DUP"

.field public static final EXT_HDR:Ljava/lang/String; = "_HDR"

.field private static final EXT_HDR_PLUS:Ljava/lang/String; = "_HDR_PLUS"

.field private static final EXT_HYPERLAPSE:Ljava/lang/String; = "_HL"

.field public static final EXT_LAYER:Ljava/lang/String; = "_LAYER"

.field private static final EXT_LL:Ljava/lang/String; = "_LL"

.field private static final EXT_MFNR:Ljava/lang/String; = "_MFNR"

.field private static final EXT_MOTION_PHOTOS:Ljava/lang/String; = "_MP"

.field public static final EXT_MULTI_FRAME:Ljava/lang/String; = "_MF"

.field private static final EXT_NV:Ljava/lang/String; = "_NV"

.field public static final EXT_PORTRAIT:Ljava/lang/String; = "_PORTRAIT"

.field private static final EXT_PREVIEW_DUMP:Ljava/lang/String; = "_PREVIEW"

.field private static final EXT_SR:Ljava/lang/String; = "_SR"

.field private static final EXT_SUPER_REMOSAIC:Ljava/lang/String; = "_SRRM"

.field private static final FORMAT:Ljava/lang/String; = "yyyyMMdd_HHmmssSSS"

.field private static final MAX_FILE_NAME_LENGTH:I = 0x80

.field public static final PREFIX_CINEMAGRAPH:Ljava/lang/String; = "CMGPH_"

.field public static final PREFIX_IMAGE:Ljava/lang/String; = "IMG_"

.field public static final PREFIX_TEMPORARY:Ljava/lang/String; = "TEMP_"

.field public static final PREFIX_VIDEO:Ljava/lang/String; = "VID_"


# instance fields
.field private mAttributes:I

.field private mDate:J

.field private mExtension:Ljava/lang/String;

.field private mFileNumber:I

.field private mPrefix:Ljava/lang/String;

.field private final transient mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mSuffix:Ljava/lang/String;

.field private mType:Lcom/motorola/camera/ShotType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ShotType;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 3
    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMdd_HHmmssSSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    .line 5
    iput-wide p2, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/saving/FileName;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 8
    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMdd_HHmmssSSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 9
    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    .line 10
    iget-wide v0, p1, Lcom/motorola/camera/saving/FileName;->mDate:J

    iput-wide v0, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    .line 11
    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    .line 14
    iget p1, p1, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    iput p1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    return-void
.end method

.method private appendFileNumber(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/icu/text/NumberFormat;->getIntegerInstance()Landroid/icu/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    const/16 v1, 0x63

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    const-string v1, "_"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/saving/FileName;->mFileNumber:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    return-object p0

    :cond_0
    const/16 v0, 0x2000

    .line 2
    invoke-direct {p0, v0}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "TEMP_"

    return-object p0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v0}, Lcom/motorola/camera/ShotType;->isCinemagraph()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "CMGPH_"

    return-object p0

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {p0}, Lcom/motorola/camera/ShotType;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "VID_"

    goto :goto_0

    :cond_3
    const-string p0, "IMG_"

    :goto_0
    return-object p0
.end method

.method private hasAttribute(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createExtension()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, ".mp4"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const-string p0, ".jpg"

    return-object p0

    :cond_1
    const/16 v0, 0x800

    .line 3
    invoke-direct {p0, v0}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v2

    :cond_2
    const-string p0, ".gif"

    return-object p0

    :cond_3
    const-string p0, ".dng"

    return-object p0

    :cond_4
    return-object v2
.end method

.method public extension(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->createExtension()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getNameNoExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->createExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameNoExtension()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/saving/FileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-wide v3, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-direct {p0}, Lcom/motorola/camera/saving/FileName;->createPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    sget-object v3, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/motorola/camera/saving/FileName;->mFileNumber:I

    if-le v2, v4, :cond_1

    invoke-direct {p0, v0}, Lcom/motorola/camera/saving/FileName;->appendFileNumber(Ljava/lang/StringBuilder;)V

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_2
    const/16 v2, 0x4000

    .line 7
    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "_HL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_3
    const/high16 v2, 0x1000000

    .line 8
    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    const/16 v3, 0x20

    const-string v5, "_MFNR"

    const/high16 v6, 0x20000

    const-string v7, "_HDR"

    if-eqz v2, :cond_6

    .line 9
    invoke-direct {p0, v3}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_4
    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v6}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_0
    const-string v1, "_AI"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_6
    const/high16 v2, 0x8000000

    .line 12
    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 13
    invoke-direct {p0, v3}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14
    :cond_7
    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v1, :cond_8

    invoke-direct {p0, v6}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_1
    const-string v1, "_IS"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 16
    :cond_9
    invoke-direct {p0, v3}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_a
    const/16 v2, 0x1000

    .line 17
    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "_MP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_b
    const/4 v2, 0x2

    .line 18
    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v1, 0x4

    .line 19
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    const-string v2, "_DEPTH"

    if-eqz v1, :cond_c

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_MAP"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_c
    const/16 v1, 0x200

    .line 22
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x80000

    .line 23
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 24
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    const/high16 v1, 0x800000

    .line 25
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "_MF"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_e
    :goto_2
    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v1, :cond_f

    invoke-direct {p0, v6}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 28
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, "_PORTRAIT"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_10
    const/16 v1, 0x100

    .line 30
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "_LAYER"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 32
    :cond_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 33
    :cond_12
    sget-boolean v2, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v2, :cond_13

    .line 34
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "_LL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_13
    if-eqz v2, :cond_14

    .line 35
    invoke-direct {p0, v6}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_14
    if-eqz v2, :cond_15

    const/high16 v1, 0x10000

    .line 36
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "_NV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_15
    if-eqz v2, :cond_16

    const/high16 v1, 0x40000

    .line 37
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "_HDR_PLUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_16
    const/16 v1, 0x10

    .line 38
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "_DUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_17
    if-eqz v2, :cond_18

    .line 39
    invoke-direct {p0, v4}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "_ALT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_18
    if-eqz v2, :cond_19

    const/16 v1, 0x400

    .line 40
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "_SR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_19
    if-eqz v2, :cond_1a

    const/high16 v1, 0x200000

    .line 41
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "_DF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1a
    const/high16 v1, 0x100000

    .line 42
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "_PREVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1b
    if-eqz v2, :cond_1c

    const/high16 v1, 0x400000

    .line 43
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "_SRRM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1c
    if-eqz v2, :cond_1d

    const/16 v1, 0x8

    .line 44
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "_DIS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    :goto_3
    const/high16 v1, 0x2000000

    .line 45
    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "_DOC"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_1e
    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v1, :cond_1f

    const/high16 v1, 0x4000000

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string p0, "_SM"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeAttribute(I)Lcom/motorola/camera/saving/FileName;
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    return-object p0
.end method

.method public setAttribute(I)Lcom/motorola/camera/saving/FileName;
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    return-object p0
.end method

.method public setCaptureTime(J)Lcom/motorola/camera/saving/FileName;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    return-object p0
.end method

.method public setFileNumber(I)Lcom/motorola/camera/saving/FileName;
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/saving/FileName;->mFileNumber:I

    return-object p0
.end method

.method public setInstanceTypeAttributes(Lcom/motorola/camera/mcf/Mcf$InstanceType;)Lcom/motorola/camera/saving/FileName;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/high16 v0, 0x8000000

    const/high16 v1, 0x400000

    const/high16 v2, 0x1000000

    const/high16 v3, 0x20000

    const/16 v4, 0x20

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 7
    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    :pswitch_4
    const/high16 p1, 0x800000

    .line 9
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    :pswitch_5
    const/high16 p1, 0x80000

    .line 10
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x400

    .line 11
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    :pswitch_7
    const/high16 p1, 0x10000

    .line 12
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    :pswitch_8
    const/high16 p1, 0x40000

    .line 13
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    .line 14
    :pswitch_9
    invoke-virtual {p0, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 15
    invoke-virtual {p0, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    .line 16
    :pswitch_a
    invoke-virtual {p0, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    :pswitch_b
    const/high16 p1, 0x200000

    .line 17
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    .line 18
    :pswitch_c
    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 19
    invoke-virtual {p0, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :pswitch_d
    const/16 p1, 0x80

    .line 20
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    .line 21
    :pswitch_e
    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    return-object p0
.end method

.method public suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FileName{mType="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
