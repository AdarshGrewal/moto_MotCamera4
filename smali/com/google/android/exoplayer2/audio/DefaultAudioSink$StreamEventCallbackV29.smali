.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StreamEventCallbackV29"
.end annotation


# instance fields
.field public final callback:Landroid/media/AudioTrack$StreamEventCallback;

.field public final handler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    return-void
.end method
