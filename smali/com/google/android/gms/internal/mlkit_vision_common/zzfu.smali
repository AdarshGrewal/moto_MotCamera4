.class public Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field public zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;

.field public zzc:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/util/List;Lcom/google/android/datatransport/runtime/TransportContext;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzc:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzb:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/content/Mask;

    .line 14
    iget-object v2, v2, Lcom/airbnb/lottie/model/content/Mask;->maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 15
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/content/Mask;

    .line 17
    iget-object v1, v1, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzb:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/TransportInternal;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Ljava/lang/Object;

    .line 21
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzb:Ljava/lang/Object;

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)V
    .locals 1

    const-string v0, "arguments"

    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzb:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzc:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzb:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/TransportContext;

    move-object/from16 v3, p1

    check-cast v3, Landroid/database/Cursor;

    sget-object v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    .line 1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    .line 2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x7

    .line 3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v4

    .line 4
    :goto_1
    new-instance v9, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;

    invoke-direct {v9}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 5
    iput-object v10, v9, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->autoMetadata:Ljava/util/Map;

    .line 6
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    const/4 v10, 0x2

    .line 7
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setEventMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    const/4 v10, 0x3

    .line 8
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setUptimeMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    const/4 v10, 0x4

    if-eqz v7, :cond_2

    .line 9
    new-instance v4, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 10
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 11
    sget-object v7, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    goto :goto_2

    .line 12
    :cond_1
    new-instance v8, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v8, v7}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_2
    const/4 v8, 0x5

    .line 13
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 14
    invoke-virtual {v9, v4}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    goto :goto_4

    .line 15
    :cond_2
    new-instance v7, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 16
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    .line 17
    sget-object v10, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    goto :goto_3

    .line 18
    :cond_3
    new-instance v11, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v11, v10}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    .line 19
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "bytes"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v13

    new-array v15, v8, [Ljava/lang/String;

    .line 20
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v12, "event_payloads"

    const-string v14, "event_id = ?"

    const-string v18, "sequence_num"

    .line 21
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    sget-object v8, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;

    .line 22
    invoke-static {v4, v8}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 23
    invoke-direct {v7, v10, v4}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 24
    invoke-virtual {v9, v7}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    :goto_4
    const/4 v4, 0x6

    .line 25
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 26
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 27
    iput-object v4, v9, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->code:Ljava/lang/Integer;

    .line 28
    :cond_4
    invoke-virtual {v9}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v4

    .line 29
    new-instance v7, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;

    invoke-direct {v7, v5, v6, v0, v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;-><init>(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)V

    .line 30
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransport(Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/datatransport/Encoding;",
            "Lcom/google/android/datatransport/Transformer<",
            "TT;[B>;)",
            "Lcom/google/android/datatransport/Transport<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/TransportImpl;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzc:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lcom/google/android/datatransport/runtime/TransportInternal;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/datatransport/runtime/TransportImpl;-><init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/runtime/TransportInternal;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    aput-object p0, p3, p2

    const-string p0, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 4
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
