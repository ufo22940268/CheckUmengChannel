.class public final Lsdk/c/b/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:B

.field public c:B

.field public d:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lsdk/c/b/a/b/a;->a:I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lsdk/c/b/a/b/a;->d:[B

    array-length v0, p1

    iput v0, p0, Lsdk/c/b/a/b/a;->a:I

    goto :goto_0
.end method
