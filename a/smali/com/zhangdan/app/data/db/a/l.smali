.class public interface abstract Lcom/zhangdan/app/data/db/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/shopping_sheet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/l;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF NOT EXISTS ShoppingSheet(_id INTEGER PRIMARY KEY AUTOINCREMENT,auto_id INTEGER DEFAULT 0,bank_id INTEGER DEFAULT 0,bill_id INTEGER DEFAULT 0,user_id INTEGER DEFAULT 0,trans_date TEXT DEFAULT \'\',post_date TEXT DEFAULT \'\',discription TEXT DEFAULT \'\',trans_type TEXT DEFAULT \'\',currency_type INTEGER DEFAULT 0,category_id INTEGER DEFAULT 0,amount_money REAL DEFAULT 0,trans_org_amount REAL DEFAULT 0,trans_addr TEXT DEFAULT \'\',"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "card_no TEXT DEFAULT \'\',create_time TEXT DEFAULT \'\',last_modify_time TEXT DEFAULT \'\',has_remark INTEGER DEFAULT 0,custom_category_id INTEGER DEFAULT 0,remark TEXT DEFAULT \'\',mood_id INTEGER DEFAULT 0,store_name TEXT DEFAULT \'\',sync_remark TEXT DEFAULT \'\',is_star INTEGER DEFAULT 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/l;->b:Ljava/lang/String;

    return-void
.end method
