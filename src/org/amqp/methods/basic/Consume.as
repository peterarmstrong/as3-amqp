/**
 * ---------------------------------------------------------------------------
 *   Copyright (C) 2008 0x6e6562
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 * ---------------------------------------------------------------------------
 **/
package org.amqp.methods.basic
{
    import org.amqp.Method;
    import org.amqp.LongString;
    import org.amqp.methods.ArgumentReader;
    import org.amqp.methods.ArgumentWriter;
    import org.amqp.methods.MethodArgumentReader;
    import org.amqp.methods.MethodArgumentWriter;
    import com.ericfeminella.utils.Map;
    import com.ericfeminella.utils.HashMap;
    import org.amqp.impl.ByteArrayLongString;
    import flash.utils.ByteArray;

    /**
     *   THIS IS AUTO-GENERATED CODE. DO NOT EDIT!
     **/
    public class Consume extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _ticket:int = 0;
         private var _queue:String = "";
         private var _consumertag:String = "";
         private var _nolocal:Boolean = false;
         private var _noack:Boolean = false;
         private var _exclusive:Boolean = false;
         private var _nowait:Boolean = false;

         public function get ticket():int {return _ticket;}
         public function get queue():String {return _queue;}
         public function get consumertag():String {return _consumertag;}
         public function get nolocal():Boolean {return _nolocal;}
         public function get noack():Boolean {return _noack;}
         public function get exclusive():Boolean {return _exclusive;}
         public function get nowait():Boolean {return _nowait;}

         public function set ticket(x:int):void {_ticket = x;}
         public function set queue(x:String):void {_queue = x;}
         public function set consumertag(x:String):void {_consumertag = x;}
         public function set nolocal(x:Boolean):void {_nolocal = x;}
         public function set noack(x:Boolean):void {_noack = x;}
         public function set exclusive(x:Boolean):void {_exclusive = x;}
         public function set nowait(x:Boolean):void {_nowait = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }

         override public function getResponse():Method {
             return new ConsumeOk();
         }

         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 60;
         }

         override public function getMethodId():int{
             return 20;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeShort(_ticket);
             writer.writeShortstr(_queue);
             writer.writeShortstr(_consumertag);
             writer.writeBit(_nolocal);
             writer.writeBit(_noack);
             writer.writeBit(_exclusive);
             writer.writeBit(_nowait);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _ticket = reader.readShort();
             _queue = reader.readShortstr();
             _consumertag = reader.readShortstr();
             _nolocal = reader.readBit();
             _noack = reader.readBit();
             _exclusive = reader.readBit();
             _nowait = reader.readBit();
         }

         public function dump():void {
             trace("-------- basic.Consume --------");
             trace("ticket: {" + _ticket + "}");
             trace("queue: {" + _queue + "}");
             trace("consumertag: {" + _consumertag + "}");
             trace("nolocal: {" + _nolocal + "}");
             trace("noack: {" + _noack + "}");
             trace("exclusive: {" + _exclusive + "}");
             trace("nowait: {" + _nowait + "}");
         }
    }
}