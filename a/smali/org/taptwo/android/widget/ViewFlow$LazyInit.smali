.class final enum Lorg/taptwo/android/widget/ViewFlow$LazyInit;
.super Ljava/lang/Enum;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/taptwo/android/widget/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LazyInit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/taptwo/android/widget/ViewFlow$LazyInit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/taptwo/android/widget/ViewFlow$LazyInit;

.field public static final enum LEFT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

.field public static final enum RIGHT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lorg/taptwo/android/widget/ViewFlow$LazyInit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->LEFT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    new-instance v0, Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lorg/taptwo/android/widget/ViewFlow$LazyInit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->RIGHT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    sget-object v1, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->LEFT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    aput-object v1, v0, v2

    sget-object v1, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->RIGHT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    aput-object v1, v0, v3

    sput-object v0, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->$VALUES:[Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/taptwo/android/widget/ViewFlow$LazyInit;
    .locals 1
    .parameter "name"

    .prologue
    .line 110
    const-class v0, Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    return-object v0
.end method

.method public static values()[Lorg/taptwo/android/widget/ViewFlow$LazyInit;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->$VALUES:[Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-virtual {v0}, [Lorg/taptwo/android/widget/ViewFlow$LazyInit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    return-object v0
.end method
