.class public final Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;
.super Ljava/lang/Object;
.source "SpannedToHtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanInfo"
.end annotation


# static fields
.field public static final FOR_CLOSING_TAGS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOR_OPENING_TAGS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final closingTag:Ljava/lang/String;

.field public final end:I

.field public final openingTag:Ljava/lang/String;

.field public final start:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;->INSTANCE$com$google$android$exoplayer2$ui$SpannedToHtmlConverter$SpanInfo$$InternalSyntheticLambda$0$051a855d088ae4718a2f976a2a9ece272be410382031f6bce8d670538f7c7277$0:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;

    sput-object v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->FOR_OPENING_TAGS:Ljava/util/Comparator;

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda5;->INSTANCE$com$google$android$exoplayer2$ui$SpannedToHtmlConverter$SpanInfo$$InternalSyntheticLambda$0$051a855d088ae4718a2f976a2a9ece272be410382031f6bce8d670538f7c7277$1:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda5;

    sput-object v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->FOR_CLOSING_TAGS:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    return-void
.end method
