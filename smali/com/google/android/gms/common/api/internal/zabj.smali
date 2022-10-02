.class public final Lcom/google/android/gms/common/api/internal/zabj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/common/api/internal/zabk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabj;->zaa:Lcom/google/android/gms/common/api/internal/zabk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabj;->zaa:Lcom/google/android/gms/common/api/internal/zabk;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/zabl;

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " disconnecting because it was signed out."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return-void
.end method
