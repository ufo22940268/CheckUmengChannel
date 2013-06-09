.class final enum Lorg/taptwo/android/widget/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/taptwo/android/widget/f;

.field public static final enum b:Lorg/taptwo/android/widget/f;

.field private static final synthetic c:[Lorg/taptwo/android/widget/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/taptwo/android/widget/f;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lorg/taptwo/android/widget/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/taptwo/android/widget/f;->a:Lorg/taptwo/android/widget/f;

    new-instance v0, Lorg/taptwo/android/widget/f;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lorg/taptwo/android/widget/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/taptwo/android/widget/f;->b:Lorg/taptwo/android/widget/f;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/taptwo/android/widget/f;

    sget-object v1, Lorg/taptwo/android/widget/f;->a:Lorg/taptwo/android/widget/f;

    aput-object v1, v0, v2

    sget-object v1, Lorg/taptwo/android/widget/f;->b:Lorg/taptwo/android/widget/f;

    aput-object v1, v0, v3

    sput-object v0, Lorg/taptwo/android/widget/f;->c:[Lorg/taptwo/android/widget/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/taptwo/android/widget/f;
    .locals 1

    const-class v0, Lorg/taptwo/android/widget/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/taptwo/android/widget/f;

    return-object v0
.end method

.method public static values()[Lorg/taptwo/android/widget/f;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/taptwo/android/widget/f;->c:[Lorg/taptwo/android/widget/f;

    array-length v1, v0

    new-array v2, v1, [Lorg/taptwo/android/widget/f;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
