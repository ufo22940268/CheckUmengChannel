.class public interface abstract Lcom/zhangdan/app/data/db/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/billreturn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/e;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF NOT EXISTS BillReturn(_id INTEGER PRIMARY KEY AUTOINCREMENT,auto_id INTEGER DEFAULT 0,user_id INTEGER DEFAULT 0,bill_id INTEGER DEFAULT 0,return_amount REAL DEFAULT 0,return_date TEXT DEFAULT \'\',create_time TEXT DEFAULT \'\',modify_time TEXT DEFAULT \'\',sync_status TEXT DEFAULT \'\',local_id TEXT DEFAULT \'\',is_delete INTEGER DEFAULT 0)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/e;->b:Ljava/lang/String;

    return-void
.end method
