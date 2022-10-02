.class public final synthetic Lcom/google/android/play/core/assetpacks/zzeo;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic zza:Lcom/google/android/play/core/assetpacks/zzeo;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzeo;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/zzeo;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzeo;->zza:Lcom/google/android/play/core/assetpacks/zzeo;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzep;->zza:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
