.class public Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "GsonUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CapturedMediaDataTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;",
        ">;"
    }
.end annotation


# instance fields
.field public final mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;Lcom/google/gson/Gson;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto/16 :goto_3

    .line 3
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "expecting object: "

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 5
    sget-object v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const-wide/16 v5, -0x1

    move-object v8, v3

    move v9, v4

    move-wide v13, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 7
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "dat_siz"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_1

    :cond_2
    move/from16 v16, v9

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "byt_buf_url"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/16 v16, 0x7

    goto :goto_1

    :sswitch_2
    const-string v7, "raw_dat"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/16 v16, 0x6

    goto :goto_1

    :sswitch_3
    const-string v7, "cap_rec"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/16 v16, 0x5

    goto :goto_1

    :sswitch_4
    const-string v7, "cap_log"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    const/16 v16, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v7, "snap_typ"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    const/16 v16, 0x3

    goto :goto_1

    :sswitch_6
    const-string v7, "reproc_typ"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    const/16 v16, 0x2

    goto :goto_1

    :sswitch_7
    const-string v7, "mp_video_path"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_1

    :cond_9
    const/16 v16, 0x1

    goto :goto_1

    :sswitch_8
    const-string v7, "mp_video_duration"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_1

    :cond_a
    const/16 v16, 0x0

    :goto_1
    packed-switch v16, :pswitch_data_0

    .line 9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unknown field name while parsing CapturedMediaData:"

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-static {v0, v2}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    goto/16 :goto_0

    .line 12
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 13
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v10

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v7, p0

    .line 14
    iget-object v2, v7, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;->mGson:Lcom/google/gson/Gson;

    const-class v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {v2, v0, v9}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    goto :goto_2

    :pswitch_4
    move-object/from16 v7, p0

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v12

    goto :goto_2

    :pswitch_5
    move-object/from16 v7, p0

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-result-object v8

    goto :goto_2

    :pswitch_6
    move-object/from16 v7, p0

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v1

    goto :goto_2

    :pswitch_7
    move-object/from16 v7, p0

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :pswitch_8
    move-object/from16 v7, p0

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v13

    :goto_2
    const/16 v9, 0x8

    goto/16 :goto_0

    .line 20
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    if-eqz v2, :cond_d

    .line 21
    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v0, v2, v8, v10, v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    .line 22
    iput v11, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    .line 23
    iput-boolean v12, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    .line 24
    iput-object v3, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    if-eqz v4, :cond_c

    cmp-long v1, v13, v5

    if-eqz v1, :cond_c

    .line 25
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setMotionVideoFile(Ljava/io/File;)V

    .line 26
    iput-wide v13, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    :cond_c
    move-object v2, v0

    :goto_3
    return-object v2

    .line 27
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Json. Failed to deserialize Image Capture Record data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7555b50c -> :sswitch_8
        -0x340fee7b -> :sswitch_7
        0xbc82555 -> :sswitch_6
        0x10f1ec96 -> :sswitch_5
        0x20e61957 -> :sswitch_4
        0x20e62ea3 -> :sswitch_3
        0x3ac61700 -> :sswitch_2
        0x3f68da61 -> :sswitch_1
        0x5604cc3c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 4
    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string v0, "byt_buf_url"

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 6
    iget-object v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    .line 7
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 8
    :cond_1
    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eqz v0, :cond_2

    const-string v0, "reproc_typ"

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 10
    iget-object v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 12
    :cond_2
    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "snap_typ"

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 14
    iget-object v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_3
    const-string v0, "raw_dat"

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "dat_siz"

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 18
    iget v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    int-to-long v1, v1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 20
    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-eqz v0, :cond_4

    const-string v1, "mp_video_path"

    .line 21
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "mp_video_duration"

    .line 23
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 24
    iget-wide v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 26
    :cond_4
    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-eqz v0, :cond_5

    const-string v0, "cap_rec"

    .line 27
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;->mGson:Lcom/google/gson/Gson;

    .line 28
    iget-object v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 29
    const-class v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {p0, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_5
    const-string p0, "cap_log"

    .line 30
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    .line 31
    iget-boolean p2, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    .line 32
    invoke-virtual {p0, p2}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    .line 33
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    :goto_0
    return-void
.end method
