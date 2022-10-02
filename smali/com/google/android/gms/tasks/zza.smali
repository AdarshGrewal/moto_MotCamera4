.class public final Lcom/google/android/gms/tasks/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic zza:Lcom/google/gson/FieldAttributes;


# direct methods
.method public constructor <init>(Lcom/google/gson/FieldAttributes;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/gson/FieldAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/gson/FieldAttributes;

    .line 1
    iget-object p0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zze()Z

    return-void
.end method
