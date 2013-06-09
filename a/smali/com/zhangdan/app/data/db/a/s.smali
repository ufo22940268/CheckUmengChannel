.class public interface abstract Lcom/zhangdan/app/data/db/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/usercard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/s;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF NOT EXISTS UserCard(_id INTEGER PRIMARY KEY AUTOINCREMENT,auto_id INTEGER DEFAULT 0,user_id INTEGER DEFAULT 0,ub_id INTEGER DEFAULT 0,bank_id INTEGER DEFAULT 0,card_num TEXT DEFAULT \'\',status INTEGER DEFAULT 0,card_fee INTEGER DEFAULT 0,fee_month INTEGER DEFAULT 0,name_on_card TEXT DEFAULT \'\',full_card_num TEXT DEFAULT \'\',id_no TEXT DEFAULT \'\',true_name TEXT DEFAULT \'\',sync_status TEXT DEFAULT \'\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/s;->b:Ljava/lang/String;

    return-void
.end method
