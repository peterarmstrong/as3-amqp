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
package org.amqp.methods.exchange
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
    public class Declare extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _ticket:int = 0;
         private var _exchange:String = "";
         private var _type:String = "";
         private var _passive:Boolean = false;
         private var _durable:Boolean = false;
         private var _autodelete:Boolean = false;
         private var _Internal:Boolean = false;
         private var _nowait:Boolean = false;
         private var _arguments:Map = new HashMap();

         public function get ticket():int {return _ticket;}
         public function get exchange():String {return _exchange;}
         public function get type():String {return _type;}
         public function get passive():Boolean {return _passive;}
         public function get durable():Boolean {return _durable;}
         public function get autodelete():Boolean {return _autodelete;}
         public function get Internal():Boolean {return _Internal;}
         public function get nowait():Boolean {return _nowait;}
         public function get arguments():Map {return _arguments;}

         public function set ticket(x:int):void {_ticket = x;}
         public function set exchange(x:String):void {_exchange = x;}
         public function set type(x:String):void {_type = x;}
         public function set passive(x:Boolean):void {_passive = x;}
         public function set durable(x:Boolean):void {_durable = x;}
         public function set autodelete(x:Boolean):void {_autodelete = x;}
         public function set Internal(x:Boolean):void {_Internal = x;}
         public function set nowait(x:Boolean):void {_nowait = x;}
         public function set arguments(x:Map):void {_arguments = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }

         override public function getResponse():Method {
             return new DeclareOk();
         }

         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 40;
         }

         override public function getMethodId():int{
             return 10;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeShort(_ticket);
             writer.writeShortstr(_exchange);
             writer.writeShortstr(_type);
             writer.writeBit(_passive);
             writer.writeBit(_durable);
             writer.writeBit(_autodelete);
             writer.writeBit(_Internal);
             writer.writeBit(_nowait);
             writer.writeTable(_arguments);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _ticket = reader.readShort();
             _exchange = reader.readShortstr();
             _type = reader.readShortstr();
             _passive = reader.readBit();
             _durable = reader.readBit();
             _autodelete = reader.readBit();
             _Internal = reader.readBit();
             _nowait = reader.readBit();
             _arguments = reader.readTable();
         }

         public function dump():void {
             trace("-------- exchange.Declare --------");
             trace("ticket: {" + _ticket + "}");
             trace("exchange: {" + _exchange + "}");
             trace("type: {" + _type + "}");
             trace("passive: {" + _passive + "}");
             trace("durable: {" + _durable + "}");
             trace("autodelete: {" + _autodelete + "}");
             trace("Internal: {" + _Internal + "}");
             trace("nowait: {" + _nowait + "}");
             trace("arguments: {" + _arguments + "}");
         }
    }
}