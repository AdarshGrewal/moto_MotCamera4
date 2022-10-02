.class public final synthetic Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/fsm/camera/iFsmBuilder;
.implements Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$com$google$android$exoplayer2$extractor$mp3$Mp3Extractor$$InternalSyntheticLambda$4$e7a78f5cd49dee221ea396f6c787865b46983e3a3916e8d5e1a60d4c51549f1f$1:Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;->INSTANCE$com$google$android$exoplayer2$extractor$mp3$Mp3Extractor$$InternalSyntheticLambda$4$e7a78f5cd49dee221ea396f6c787865b46983e3a3916e8d5e1a60d4c51549f1f$1:Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IIIII)Z
    .locals 2

    sget-object p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    const/4 p0, 0x2

    const/16 v0, 0x4d

    const/16 v1, 0x43

    if-ne p2, v1, :cond_0

    const/16 v1, 0x4f

    if-ne p3, v1, :cond_0

    if-ne p4, v0, :cond_0

    if-eq p5, v0, :cond_1

    if-eq p1, p0, :cond_1

    :cond_0
    if-ne p2, v0, :cond_2

    const/16 p2, 0x4c

    if-ne p3, p2, :cond_2

    if-ne p4, p2, :cond_2

    const/16 p2, 0x54

    if-eq p5, p2, :cond_1

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
