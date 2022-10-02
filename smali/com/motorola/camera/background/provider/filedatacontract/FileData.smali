.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileData;
.super Ljava/lang/Object;
.source "FileData.kt"


# static fields
.field public static final Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileData;

.field public static final DEFAULT_TIMEOUT_MS:J


# instance fields
.field public dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

.field public id:J

.field public mCompressionType:Ljava/lang/String;

.field public mEncryptionType:Ljava/lang/String;

.field public mExpirationTime:Ljava/lang/Long;

.field public mFileName:Ljava/lang/String;

.field public mFormat:Ljava/lang/String;

.field public mMIMEType:Ljava/lang/String;

.field public mRefCount:Ljava/lang/Integer;

.field public mSize:Ljava/lang/Integer;

.field public mTag:Ljava/lang/Long;

.field public mTs:Ljava/lang/Long;

.field public mUri:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->DEFAULT_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/motorola/camera/background/provider/filedatacontract/DimProp;I)V
    .locals 7

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit16 v2, v1, 0x800

    const/4 v3, 0x0

    .line 1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    .line 2
    new-instance v4, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    invoke-direct {v4, v3, v3, v3}, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    const-string v1, "dims"

    .line 3
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v5, p1

    .line 5
    iput-wide v5, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTag:Ljava/lang/Long;

    move-object v1, p4

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFileName:Ljava/lang/String;

    move-object v1, p5

    .line 8
    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mUri:Ljava/lang/String;

    move-object v1, p6

    .line 9
    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTs:Ljava/lang/Long;

    move-object v1, p7

    .line 10
    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mMIMEType:Ljava/lang/String;

    move-object v1, p8

    .line 11
    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFormat:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 12
    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mExpirationTime:Ljava/lang/Long;

    move-object/from16 v1, p10

    .line 13
    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mRefCount:Ljava/lang/Integer;

    move-object/from16 v1, p11

    .line 14
    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mCompressionType:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 15
    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mEncryptionType:Ljava/lang/String;

    .line 16
    iput-object v2, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    .line 17
    iput-object v4, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    return-void
.end method

.method public static final fromContentValues(Landroid/content/ContentValues;)Lcom/motorola/camera/background/provider/filedatacontract/FileData;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    new-instance v15, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-wide/16 v2, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    const-string v12, ""

    const-string v13, ""

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x1800

    move-object v1, v15

    move-object/from16 v4, v19

    move-object/from16 v7, v19

    move-object/from16 v10, v19

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    move/from16 v16, v20

    invoke-direct/range {v1 .. v16}, Lcom/motorola/camera/background/provider/filedatacontract/FileData;-><init>(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/motorola/camera/background/provider/filedatacontract/DimProp;I)V

    const-string v1, "id"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    move-wide/from16 v3, v17

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    goto :goto_1

    :goto_2
    move-object/from16 v1, v21

    .line 4
    iput-wide v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    goto :goto_3

    :cond_3
    move-object/from16 v1, v21

    :goto_3
    const-string/jumbo v3, "tag"

    if-nez v0, :cond_4

    move v4, v2

    goto :goto_4

    .line 5
    :cond_4
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_4
    if-eqz v4, :cond_7

    if-nez v0, :cond_5

    goto :goto_5

    .line 6
    :cond_5
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_6

    :goto_5
    move-object/from16 v3, v19

    .line 7
    :cond_6
    iput-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTag:Ljava/lang/Long;

    :cond_7
    const-string v3, "file_name"

    if-nez v0, :cond_8

    move v4, v2

    goto :goto_6

    .line 8
    :cond_8
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_6
    const/4 v5, 0x0

    if-eqz v4, :cond_a

    if-nez v0, :cond_9

    move-object v3, v5

    goto :goto_7

    .line 9
    :cond_9
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    :goto_7
    iput-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFileName:Ljava/lang/String;

    :cond_a
    const-string/jumbo v3, "uri"

    if-nez v0, :cond_b

    move v4, v2

    goto :goto_8

    .line 11
    :cond_b
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_8
    if-eqz v4, :cond_d

    if-nez v0, :cond_c

    move-object v3, v5

    goto :goto_9

    .line 12
    :cond_c
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    :goto_9
    iput-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mUri:Ljava/lang/String;

    :cond_d
    const-string/jumbo v3, "ts"

    if-nez v0, :cond_e

    move v4, v2

    goto :goto_a

    .line 14
    :cond_e
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_a
    if-eqz v4, :cond_10

    if-nez v0, :cond_f

    move-object v3, v5

    goto :goto_b

    .line 15
    :cond_f
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 16
    :goto_b
    iput-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTs:Ljava/lang/Long;

    :cond_10
    const-string v3, "MIME_type"

    if-nez v0, :cond_11

    move v4, v2

    goto :goto_c

    .line 17
    :cond_11
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_c
    if-eqz v4, :cond_13

    if-nez v0, :cond_12

    move-object v3, v5

    goto :goto_d

    .line 18
    :cond_12
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    :goto_d
    iput-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mMIMEType:Ljava/lang/String;

    :cond_13
    const-string v3, "format"

    if-nez v0, :cond_14

    move v4, v2

    goto :goto_e

    .line 20
    :cond_14
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_e
    if-eqz v4, :cond_16

    if-nez v0, :cond_15

    move-object v3, v5

    goto :goto_f

    .line 21
    :cond_15
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    :goto_f
    iput-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFormat:Ljava/lang/String;

    :cond_16
    const-string/jumbo v3, "time_out"

    if-nez v0, :cond_17

    move v4, v2

    goto :goto_10

    .line 23
    :cond_17
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_10
    if-eqz v4, :cond_19

    if-nez v0, :cond_18

    move-object v3, v5

    goto :goto_11

    .line 24
    :cond_18
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 25
    :goto_11
    iput-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mExpirationTime:Ljava/lang/Long;

    :cond_19
    const-string v3, "compression_type"

    if-nez v0, :cond_1a

    move v4, v2

    goto :goto_12

    .line 26
    :cond_1a
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_12
    if-eqz v4, :cond_1c

    if-nez v0, :cond_1b

    move-object v3, v5

    goto :goto_13

    .line 27
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    :goto_13
    iput-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mCompressionType:Ljava/lang/String;

    :cond_1c
    const-string v3, "encryption_type"

    if-nez v0, :cond_1d

    move v4, v2

    goto :goto_14

    .line 29
    :cond_1d
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_14
    if-eqz v4, :cond_1f

    if-nez v0, :cond_1e

    move-object v3, v5

    goto :goto_15

    .line 30
    :cond_1e
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    :goto_15
    iput-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mEncryptionType:Ljava/lang/String;

    :cond_1f
    const-string v3, "size"

    if-nez v0, :cond_20

    move v4, v2

    goto :goto_16

    .line 32
    :cond_20
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_16
    if-eqz v4, :cond_22

    if-nez v0, :cond_21

    move-object v3, v5

    goto :goto_17

    .line 33
    :cond_21
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 34
    :goto_17
    iput-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    :cond_22
    const-string v3, "dims.width"

    if-nez v0, :cond_23

    move v4, v2

    goto :goto_18

    .line 35
    :cond_23
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_18
    if-eqz v4, :cond_25

    .line 36
    iget-object v4, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    if-nez v0, :cond_24

    move-object v3, v5

    goto :goto_19

    .line 37
    :cond_24
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 38
    :goto_19
    iput-object v3, v4, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->width:Ljava/lang/Integer;

    :cond_25
    const-string v3, "dims.height"

    if-nez v0, :cond_26

    move v4, v2

    goto :goto_1a

    .line 39
    :cond_26
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :goto_1a
    if-eqz v4, :cond_28

    .line 40
    iget-object v4, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    if-nez v0, :cond_27

    move-object v3, v5

    goto :goto_1b

    .line 41
    :cond_27
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 42
    :goto_1b
    iput-object v3, v4, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->height:Ljava/lang/Integer;

    :cond_28
    const-string v3, "dims.stride"

    if-nez v0, :cond_29

    goto :goto_1c

    .line 43
    :cond_29
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    :goto_1c
    if-eqz v2, :cond_2b

    .line 44
    iget-object v2, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    if-nez v0, :cond_2a

    goto :goto_1d

    .line 45
    :cond_2a
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 46
    :goto_1d
    iput-object v5, v2, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->stride:Ljava/lang/Integer;

    :cond_2b
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    iget-wide v3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTag:Ljava/lang/Long;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTag:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFileName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mUri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTs:Ljava/lang/Long;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTs:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mMIMEType:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mMIMEType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFormat:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFormat:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mExpirationTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mExpirationTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mRefCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mRefCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mCompressionType:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mCompressionType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mEncryptionType:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mEncryptionType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    iget-object p1, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTag:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFileName:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mUri:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTs:Ljava/lang/Long;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mMIMEType:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFormat:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mExpirationTime:Ljava/lang/Long;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mRefCount:Ljava/lang/Integer;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mCompressionType:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mEncryptionType:Ljava/lang/String;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    invoke-virtual {p0}, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FileData(id="

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTag:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTs:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMIMEType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mMIMEType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExpirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mExpirationTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mRefCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCompressionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mCompressionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEncryptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mEncryptionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dims="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
