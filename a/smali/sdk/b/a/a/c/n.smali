.class public final Lsdk/b/a/a/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/b/a/a/c/f;


# static fields
.field private static a:Lsdk/b/a/a/c/n;


# instance fields
.field private b:Lcom/igexin/sdk/SdkMainService;

.field private c:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/b/a/a/c/n;->b:Lcom/igexin/sdk/SdkMainService;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lsdk/b/a/a/c/n;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/igexin/sdk/SdkMainService;)Lsdk/b/a/a/c/n;
    .locals 1

    sget-object v0, Lsdk/b/a/a/c/n;->a:Lsdk/b/a/a/c/n;

    if-nez v0, :cond_0

    new-instance v0, Lsdk/b/a/a/c/n;

    invoke-direct {v0, p0}, Lsdk/b/a/a/c/n;-><init>(Lcom/igexin/sdk/SdkMainService;)V

    sput-object v0, Lsdk/b/a/a/c/n;->a:Lsdk/b/a/a/c/n;

    :cond_0
    sget-object v0, Lsdk/b/a/a/c/n;->a:Lsdk/b/a/a/c/n;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method
