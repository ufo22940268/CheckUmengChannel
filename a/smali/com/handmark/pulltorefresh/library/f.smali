.class public final enum Lcom/handmark/pulltorefresh/library/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/handmark/pulltorefresh/library/f;

.field public static final enum b:Lcom/handmark/pulltorefresh/library/f;

.field public static final enum c:Lcom/handmark/pulltorefresh/library/f;

.field public static final enum d:Lcom/handmark/pulltorefresh/library/f;

.field public static final enum e:Lcom/handmark/pulltorefresh/library/f;

.field public static f:Lcom/handmark/pulltorefresh/library/f;

.field public static g:Lcom/handmark/pulltorefresh/library/f;

.field private static final synthetic i:[Lcom/handmark/pulltorefresh/library/f;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/handmark/pulltorefresh/library/f;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2, v2}, Lcom/handmark/pulltorefresh/library/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;

    new-instance v0, Lcom/handmark/pulltorefresh/library/f;

    const-string v1, "PULL_FROM_START"

    invoke-direct {v0, v1, v3, v3}, Lcom/handmark/pulltorefresh/library/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    new-instance v0, Lcom/handmark/pulltorefresh/library/f;

    const-string v1, "PULL_FROM_END"

    invoke-direct {v0, v1, v4, v4}, Lcom/handmark/pulltorefresh/library/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    new-instance v0, Lcom/handmark/pulltorefresh/library/f;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5, v5}, Lcom/handmark/pulltorefresh/library/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    new-instance v0, Lcom/handmark/pulltorefresh/library/f;

    const-string v1, "MANUAL_REFRESH_ONLY"

    invoke-direct {v0, v1, v6, v6}, Lcom/handmark/pulltorefresh/library/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/f;->e:Lcom/handmark/pulltorefresh/library/f;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/f;

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->e:Lcom/handmark/pulltorefresh/library/f;

    aput-object v1, v0, v6

    sput-object v0, Lcom/handmark/pulltorefresh/library/f;->i:[Lcom/handmark/pulltorefresh/library/f;

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    sput-object v0, Lcom/handmark/pulltorefresh/library/f;->f:Lcom/handmark/pulltorefresh/library/f;

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    sput-object v0, Lcom/handmark/pulltorefresh/library/f;->g:Lcom/handmark/pulltorefresh/library/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/handmark/pulltorefresh/library/f;->h:I

    return-void
.end method

.method static a()Lcom/handmark/pulltorefresh/library/f;
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    return-object v0
.end method

.method static a(I)Lcom/handmark/pulltorefresh/library/f;
    .locals 5

    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->values()[Lcom/handmark/pulltorefresh/library/f;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    iget v4, v0, Lcom/handmark/pulltorefresh/library/f;->h:I

    if-eq p0, v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/f;
    .locals 1

    const-class v0, Lcom/handmark/pulltorefresh/library/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/f;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/f;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->i:[Lcom/handmark/pulltorefresh/library/f;

    array-length v1, v0

    new-array v2, v1, [Lcom/handmark/pulltorefresh/library/f;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method final b()Z
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->e:Lcom/handmark/pulltorefresh/library/f;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->e:Lcom/handmark/pulltorefresh/library/f;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final e()I
    .locals 1

    iget v0, p0, Lcom/handmark/pulltorefresh/library/f;->h:I

    return v0
.end method
