.class public final Lsdk/c/b/a/b/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:B

.field public h:B

.field public i:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lsdk/c/b/a/b/c;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lsdk/c/b/a/b/c;->e:I

    iget-byte v1, p0, Lsdk/c/b/a/b/c;->g:B

    or-int/2addr v0, v1

    iput v0, p0, Lsdk/c/b/a/b/c;->e:I

    iget v0, p0, Lsdk/c/b/a/b/c;->e:I

    iget-byte v1, p0, Lsdk/c/b/a/b/c;->h:B

    or-int/2addr v0, v1

    iput v0, p0, Lsdk/c/b/a/b/c;->e:I

    iget v0, p0, Lsdk/c/b/a/b/c;->e:I

    iget-byte v1, p0, Lsdk/c/b/a/b/c;->i:B

    or-int/2addr v0, v1

    iput v0, p0, Lsdk/c/b/a/b/c;->e:I

    iget v0, p0, Lsdk/c/b/a/b/c;->e:I

    return v0
.end method

.method public final a(B)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lsdk/c/b/a/b/c;->e:I

    iget v0, p0, Lsdk/c/b/a/b/c;->e:I

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Lsdk/c/b/a/b/c;->g:B

    iget v0, p0, Lsdk/c/b/a/b/c;->e:I

    and-int/lit8 v0, v0, 0x70

    int-to-byte v0, v0

    iput-byte v0, p0, Lsdk/c/b/a/b/c;->h:B

    iget v0, p0, Lsdk/c/b/a/b/c;->e:I

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lsdk/c/b/a/b/c;->i:B

    return-void
.end method