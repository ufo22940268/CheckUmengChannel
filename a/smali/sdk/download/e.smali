.class final Lsdk/download/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field final synthetic a:Lsdk/download/DownloadProvider;


# direct methods
.method public constructor <init>(Lsdk/download/DownloadProvider;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lsdk/download/e;->a:Lsdk/download/DownloadProvider;

    invoke-static {}, Lsdk/download/DownloadProvider;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x65

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lsdk/download/e;->a:Lsdk/download/DownloadProvider;

    invoke-static {p1}, Lsdk/download/DownloadProvider;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/16 v0, 0x64

    const/16 v1, 0x1f

    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move p2, v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upgrading downloads database from version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    iget-object v0, p0, Lsdk/download/e;->a:Lsdk/download/DownloadProvider;

    invoke-static {p1}, Lsdk/download/DownloadProvider;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lsdk/download/e;->a:Lsdk/download/DownloadProvider;

    invoke-static {p1}, Lsdk/download/DownloadProvider;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
